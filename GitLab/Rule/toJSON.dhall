let Prelude = ../Prelude.dhall

let JSON = Prelude.JSON

let Rule = ./Type.dhall

let Rule/toJSON
    : Rule -> JSON.Type
    = \(rule : Rule) -> JSON.string "if: ${rule.`if`}"

in  Rule/toJSON
