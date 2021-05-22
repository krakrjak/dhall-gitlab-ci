let Prelude = ../Prelude.dhall

let JSON = Prelude.JSON

let Map = Prelude.Map.Type

let Rule = ./Type.dhall

let Rule/toJSON
    : Rule -> JSON.Type
    = \(rule : Rule) ->
        let obj
            : Map Text JSON.Type
            = toMap { `if` = JSON.string "${rule.`if`}" }

        in  JSON.object obj

in  Rule/toJSON
