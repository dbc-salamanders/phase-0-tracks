## Design a data structure, representing a real world scenario
## Contents of data structure should be a mix of hashes and arrays
## Presidential candidates
## Data structure is hash. keys are candidates last names
## Nested hashes include :party, :age, and :issues

candidates = {
  clinton: {
    party: "Democratic",
    age: 68,
    issues: ["stricter gun control", "reduce income inequality", "immigration reform"]
  },
  trump: {
    party: "Republican",
    age: 70,
    issues: ["ego promotion", "make america great again", "wall with Mexico"]
  },
  sanders: {
    party: "Democratic",
    age: 74,
    issues: ["free college", "Medicare for all", "wealth redistribution"]
  }
}

p candidates[:clinton][:party]