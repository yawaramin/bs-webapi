(**)

type this = [Yawaramin_BsWebapi_Node.this | `element]
type 'a subtype = ([> this] as 'a) Yawaramin_BsWebapi_Common.t
type 'a supertype = ([< this] as 'a) Yawaramin_BsWebapi_Common.t
type attr = Yawaramin_BsWebapi_Attr.this Yawaramin_BsWebapi_Common.t

external attributes: 'a subtype -> Yawaramin_BsWebapi_NamedNodeMap.t = "" [@@bs.get]
external classList: 'a subtype -> string array = "" [@@bs.get]
external className: 'a subtype -> string = "" [@@bs.get]
external setClassName: 'a subtype -> string -> unit = "className" [@@bs.set]
external clientHeight: 'a subtype -> int = "" [@@bs.get]
external clientLeft: 'a subtype -> int = "" [@@bs.get]
external clientTop: 'a subtype -> int = "" [@@bs.get]
external clientWidth: 'a subtype -> int = "" [@@bs.get]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external getAttribute: string -> string Js.nullable = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external getAttributeNS: ?namespace:string -> localName:string -> string Js.nullable = "" [@@bs.send.pipe: 'a subtype]
external getAttributeNames: 'a subtype -> string array = "" [@@bs.send]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external getElementsByClassName: string -> 'b supertype array = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external getElementsByTagName: string -> 'b supertype array = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external getElementsByTagNameNS: ?namespace:string -> localName:string -> 'b supertype array = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external hasAttribute: string -> Js.boolean = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external hasAttributeNS: ?namespace:string -> localName:string -> unit = "" [@@bs.send.pipe: 'a subtype]
external id: 'a subtype -> string = "" [@@bs.get]
external setId: 'a subtype -> string -> unit = "id" [@@bs.set]
external innerHTML: 'a subtype -> string = "" [@@bs.get]
external setInnerHTML: 'a subtype -> string -> unit = "innerHTML" [@@bs.set]
external localName: 'a subtype -> string = "" [@@bs.get]
external namespaceURI: 'a subtype -> string Js.nullable = "" [@@bs.get]
external prefix: 'a subtype -> string Js.nullable = "" [@@bs.get]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external removeAttribute: string -> unit = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external removeAttributeNS: ?namespace:string -> localName:string -> unit = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external setAttribute: qualifiedName:string -> value:string -> unit = "" [@@bs.send.pipe: 'a subtype]

(** [\[\@\@bs.send.pipe: 'a subtype\]] (last argument is an ['a subtype]
    value). *)
external setAttributeNS: ?namespace:string -> qualifiedName:string -> value:string -> unit = "" [@@bs.send.pipe: 'a subtype]
external scrollHeight: 'a subtype -> int = "" [@@bs.get]
external scrollLeft: 'a subtype -> int = "" [@@bs.get]
external setScrollLeft: 'a subtype -> int -> unit = "scrollLeft" [@@bs.set]
external scrollTop: 'a subtype -> int = "" [@@bs.get]
external setScrollTop: 'a subtype -> int -> unit = "scrollTop" [@@bs.set]
external scrollWidth: 'a subtype -> int = "" [@@bs.get]
external tagName: 'a subtype -> string = "" [@@bs.get]

(** [cast t] downcasts a supertype of [Element] to [Element]. *)
val cast: 'a supertype -> this Yawaramin_BsWebapi_Common.t option
