type _ event
type 'a eventHandler = 'a event -> unit [@bs]
type 'a eventListener = < handleEvent: 'a eventHandler > Js.t
type htmlCollection

(** See {!module:Yawaramin_BsWebapi_NamedNodeMap}. *)
type namedNodeMap
type nodeList

(** [unsafeCoerce a] unsafely casts a value [a] of any type to any other
    type. Throws away all type safety guarantees. Use with caution. *)
external unsafeCoerce: 'a -> 'b = "%identity"
