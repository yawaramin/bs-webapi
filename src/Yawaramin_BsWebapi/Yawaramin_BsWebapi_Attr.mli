type 'a t = 'a Yawaramin_BsWebapi_EventTarget.t
type this = [Yawaramin_BsWebapi_Node.this | `attr]
type 'a subtype = ([> this] as 'a) t
type 'a supertype = ([< this] as 'a) t

val cast: 'a supertype -> this t option
external localName: 'a subtype -> string = "" [@@bs.get]
external namespaceURI: 'a subtype -> string Js.nullable = "" [@@bs.get]
external name: 'a subtype -> string = "" [@@bs.get]
external ownerElement: 'a subtype -> [Yawaramin_BsWebapi_Node.this | `element] t Js.nullable = "" [@@bs.get]
external prefix: 'a subtype -> string Js.nullable = "" [@@bs.get]
external value: 'a subtype -> string = "" [@@bs.get]
