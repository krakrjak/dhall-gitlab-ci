let Prelude = ../Prelude.dhall

let Image = ../Image/Type.dhall

let Script = ../Script/Type.dhall

let ArtifactsSpec = ../ArtifactsSpec/Type.dhall

let CacheSpec = ../CacheSpec/Type.dhall

let Rule = ../Rule/Type.dhall

let NeedEntry = ../NeedEntry/Type.dhall

in    { stage = None Text
      , image = None Image
      , variables = Prelude.Map.empty Text Text
      , rules = None (List Rule)
      , dependencies = [] : List Text
      , needs = None (List NeedEntry)
      , allow_failure = False
      , tags = None (List Text)
      , before_script = None Script
      , script = [] : Script
      , services = None (List Text)
      , after_script = None Script
      , cache = None CacheSpec
      , artifacts = None ArtifactsSpec
      , environment = None Text
      }
    : ./Type.dhall
