# BDD Feature Files (Scenarios)

> Behavior Driven Development (BDD) is an agile development technique that improves collaboration between technical and non-­technical members of the team, by exploring the problem using examples. These examples then get turned into executable specifications, often called "scenarios".

## TODOS

- [ ] Integrate with Gitbook
- [ ] Render browsable documentation using [Living-Doc](https://specflow.org/tools/living-doc/)

## Directory Structure

Feature files are organized module wise. Following are quick links to all modules:

- [AA Module](./AA%20module)
- [FIP Module](./FIPModule)
- [FIU Module](./FIU%20Module)

```sh
├── bdd-feature-files # root for all feature files
│   ├── AA Module
│   │   ├── 1000 Series # all 1000 series scenarios for AAs
│   │   │   ├── **/*.feature
│   │   ├── XYYY Series # other series scenarios
│   │   │   ├── **/*.feature
│   ├── FIP Module
│   │   ├── 2000 Series # all 2000 series scenarios for FIPs
│   │   │   ├── **/*.feature
│   │   ├── XYYY Series # other series scenarios
│   │   │   ├── **/*.feature
│   ├── FIU Module
│   │   ├── XYYY Series # other series scenarios
│   │   │   ├── **/*.feature
│   │   ├── 3000 Series # all 3000 series scenarios for FIUs
│   │   │   ├── **/*.feature
```

## How to write feature files with Gherkin?

Gherkin uses a set of special keywords to give structure and meaning to executable specifications.

Following is an example:

```gherkin
Feature: Guess the word

  # The first example has two steps
  Scenario: Maker starts a game
    When the Maker starts a game
    Then the Maker waits for a Breaker to join

  # The second example has three steps
  Scenario: Breaker joins a game
    Given the Maker has started a game with the word "silky"
    When the Breaker joins the Maker's game
    Then the Breaker must guess a word with 5 characters
```

## References

- [Writing Better BDD Scenarios](https://www.youtube.com/watch?v=awwFfCYoGFQ)
- [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/)
