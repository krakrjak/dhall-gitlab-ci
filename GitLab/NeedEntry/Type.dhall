let NeedJobSpec = ../NeedJobSpec/Type.dhall

let NeedPipelineSpec = ../NeedPipelineSpec/Type.dhall

let NeedProjectSpec = ../NeedProjectSpec/Type.dhall

in  < Pipeline : NeedPipelineSpec
    | Job : NeedJobSpec
    | Project : NeedProjectSpec
    >
