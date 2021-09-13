---
description: Standard definitions for Session ID and FI status states
---

# Session ID and FI Status States

## Principles guiding the implementation of Session IDs and FI Status state machines

> Unless otherwise mentioned,
>
> 1. The term “Network participant” refers to AA, FIP and FIU roles.
> 2. The term “Data Provider” refers to both the FIP and the AA roles.
> 3. The term “Data Consumer” refers to both the AA and the FIU roles.
>
> In a FIP-AA interaction, the FIP is the Data Provider while the AA is the data consumer.  
> In an AA-FIU interaction, the AA is the Data Provider while the FIU is the data consumer

1. All network participants will implement state machines \(state names, transitions\) that are consistent with the meanings defined below - for both Session ID states and FI Status states.
2. Data providers are free to choose which of the states trigger notifications to Data consumers. Further, if a Data Provider is expected to provide data across more than one account, the choice of notifying the Data Consumer on a piecemeal basis \(i.e. as and when a particular account’s data is ready to be shared\) VS on an aggregated basis \(i.e.only after ALL the accounts’ data is ready\) is left to the Data Provider.
3. Data consumers are advised to implement a defensive programming approach, with respect to their interpretation of how data providers send notifications. Specifically, data consumers are advised to independently verify whether a session is deemed “complete” \(in terms of their having received all data expected\) or not and not rely only on the data provider’s notification deeming a session as “complete”. This is because there could be race conditions in the network that disorient the sequence of receipt of notifications. An “active” session notification could potentially follow a “completed” session notification, in some cases, however infrequent they may be.
4. Data Providers have to deem their job as complete, only when ALL the data they are expected to provide has been either delivered or is denied for valid reasons. If even some of the data is unavailable, either for reasons of failure at their end or in downstream systems \(a FIP is downstream to an AA, e.g.\), the Data Provider should, in the best interest of the data consumer, deem its job as having failed.
5. Data Providers have to write code to honor repeat issuance of session IDs for previously failed sessions.

**English Meanings of sessions initiated by “Data Providers” for “Data Consumers”**

> “Data Providers” \(either FIPs or AA\)  
> “Data Consumers” \(either AA or FIUs, respectively\)

| **Session State** | **What the Data Provider is telling the Data Consumer** |
| :--- | :--- |
| Active | I am on the job of trying to get you your data. Hang in there. |
| Completed | I have finished my job of trying to get you, your data. I guarantee you that ALL the data you wanted is either READY or has been DENIED. \(As an AA - There is no failure in my ability to connect to a FIP and get a valid response. Further, if a FIP returns a failed session status to the AA, the AA deems it as a failure for the overall session it has initiated for the FIU.\) |
| Expired | I am done waiting for you to pick up your data. If you have not done it yet, tough luck. You will have to raise a new job request if you want me to get you your data again. I may charge you separately for this new job, as it is not my fault that you did not pick up your data in time. |
| Failed | Oops! Something went wrong at my end. At least one of the accounts for which you want data could not be returned to you, owing to failure at either my end or some system downstream. \(if an AA - this would mean a FIP\). Kindly raise a new job request. Don’t worry - you will not be charged as it was my fault that I could not finish the job successfully the previous time. |

## English Meanings of FI Status values

| **FI Status** | **What the Data Provider is telling the Data Consumer** |
| :--- | :--- |
| Pending | The data you sought is not yet ready for you. Hang in there. |
| Ready | The data you sought is ready for you to pick up. |
| Denied | Sorry, but I am not allowed to give you the data you seek. Cannot help you further - please speak to my boss. |
| Delivered | The data you are seeking has already been delivered to you. There is nothing more I can do. |
| Timeout | Sorry, something went wrong at my end while trying to get you your data. Please resend your request and I will try again. |

