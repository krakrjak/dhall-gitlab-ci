let Prelude = ../Prelude.dhall

let JSON = Prelude.JSON

let Rule = ./Type.dhall

let Rule/toJSON
    : Rule -> JSON.Type
    = \(rule : Rule) -> JSON.string rule.`if`

in  Rule/toJSON
