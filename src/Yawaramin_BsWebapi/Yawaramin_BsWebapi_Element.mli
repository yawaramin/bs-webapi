type 'a t = 'a Yawaramin_BsWebapi_EventTarget.t
type attr = Yawaramin_BsWebapi_Attr.this t
type this = [Yawaramin_BsWebapi_Node.this | `element]
type 'a subtype = ([> this] as 'a) t
type 'a supertype = ([< this] as 'a) t

external attributes: 'a subtype -> Yawaramin_BsWebapi_NamedNodeMap.t = "" [@@bs.get]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast: 'a supertype -> this t option

external classList: 'a subtype -> string array = "" [@@bs.get]
external className: 'a subtype -> string = "" [@@bs.get]
external clientHeight: 'a subtype -> int = "" [@@bs.get]
external clientLeft: 'a subtype -> int = "" [@@bs.get]
external clientTop: 'a subtype -> int = "" [@@bs.get]
external clientWidth: 'a subtype -> int = "" [@@bs.get]
external getAttribute: string -> string Js.nullable = "" [@@bs.send.pipe: 'a subtype]
external getAttributeNames: 'a subtype -> string array = "" [@@bs.send]
external getAttributeNS: ?namespace:string -> localName:string -> string Js.nullable = "" [@@bs.send.pipe: 'a subtype]
external getElementsByClassName: string -> 'b supertype array = "" [@@bs.send.pipe: 'a subtype]
external getElementsByTagName: string -> 'b supertype array = "" [@@bs.send.pipe: 'a subtype]
external getElementsByTagNameNS: ?namespace:string -> localName:string -> 'b supertype array = "" [@@bs.send.pipe: 'a subtype]
external hasAttribute: string -> bool = "" [@@bs.send.pipe: 'a subtype]
external hasAttributeNS: ?namespace:string -> localName:string -> unit = "" [@@bs.send.pipe: 'a subtype]
external id: 'a subtype -> string = "" [@@bs.get]
external innerHTML: 'a subtype -> string = "" [@@bs.get]
external localName: 'a subtype -> string = "" [@@bs.get]
external namespaceURI: 'a subtype -> string Js.nullable = "" [@@bs.get]
external prefix: 'a subtype -> string Js.nullable = "" [@@bs.get]
external removeAttribute: string -> unit = "" [@@bs.send.pipe: 'a subtype]
external removeAttributeNS: ?namespace:string -> localName:string -> unit = "" [@@bs.send.pipe: 'a subtype]
external scrollHeight: 'a subtype -> int = "" [@@bs.get]
external scrollLeft: 'a subtype -> int = "" [@@bs.get]
external scrollTop: 'a subtype -> int = "" [@@bs.get]
external scrollWidth: 'a subtype -> int = "" [@@bs.get]
external setAttribute: qualifiedName:string -> value:string -> unit = "" [@@bs.send.pipe: 'a subtype]
external setAttributeNS: ?namespace:string -> qualifiedName:string -> value:string -> unit = "" [@@bs.send.pipe: 'a subtype]
external setClassName: 'a subtype -> string -> unit = "className" [@@bs.set]
external setId: 'a subtype -> string -> unit = "id" [@@bs.set]
external setInnerHTML: 'a subtype -> string -> unit = "innerHTML" [@@bs.set]
external setScrollLeft: 'a subtype -> int -> unit = "scrollLeft" [@@bs.set]
external setScrollTop: 'a subtype -> int -> unit = "scrollTop" [@@bs.set]
external tagName: 'a subtype -> string = "" [@@bs.get]
