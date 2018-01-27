type namedNodeMap
type _ t
type htmlCollection
type nodeList
type _ iterator
type _ event
type 'a eventHandler = 'a event -> unit [@bs]
type 'a eventListener = < handleEvent: 'a eventHandler > Js.t

external unsafeCoerce: 'a -> 'b = "%identity"
