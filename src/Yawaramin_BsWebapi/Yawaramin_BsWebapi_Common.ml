type _ event
type 'a eventHandler = 'a event -> unit [@bs]
type 'a eventListener = < handleEvent: 'a eventHandler > Js.t
type htmlCollection
type _ iterator

(** See {!module:Yawaramin_BsWebapi_NamedNodeMap}. *)
type namedNodeMap
type nodeList

(** A DOM object starting from [EventTarget] and extending to any of its
    subtypes.

    The type parameter is a phantom type (a 'tag') that represents the
    exact subtype of [EventTarget] that you're dealing with. E.g., if you
    have a [\[< this\] supertype], that means you have something that
    implements the [Element] (and by extension [Node] and [EventTarget])
    interfaces.

    Thus, you can use any of the operations from those modules on values
    of this type. But you can't use operations from modules which
    represent subtypes--unless you downcast the value to that subtype.

    Downcasting is implemented by each module with the [cast] function,
    which safely downcasts by testing the value for a crucial member
    property it must have to conform to the target type. If it does
    conform, the cast function returns the downcast value wrapped in a
    [Some]; if not, it returns a [None]. *)
type _ t

(** [unsafeCoerce a] unsafely casts a value [a] of any type to any other
    type. Throws away all type safety guarantees. Use with caution. *)
external unsafeCoerce: 'a -> 'b = "%identity"
