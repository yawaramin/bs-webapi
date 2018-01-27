(**)

type t = Yawaramin_BsWebapi_Common.namedNodeMap
type attr = Yawaramin_BsWebapi_Attr.this Yawaramin_BsWebapi_Common.t

external length: t -> int = "" [@@bs.get]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [NamedNodeMap.t]
    value). *)
external item: int -> attr Js.nullable = "" [@@bs.send.pipe: t]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [NamedNodeMap.t]
    value). *)
external getNamedItem: string -> attr Js.nullable =
  "" [@@bs.send.pipe: t]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [NamedNodeMap.t]
    value). *)
external getNamedItemNS:
  ?namespace: string -> localName:string -> attr Js.nullable =
  "" [@@bs.send.pipe: t]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [NamedNodeMap.t]
    value). *)
external setNamedItem: attr -> attr Js.nullable = "" [@@bs.send.pipe: t]
external setNamedItemNS: attr -> attr Js.nullable =
  "" [@@bs.send.pipe: t]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [NamedNodeMap.t]
    value). *)
external removeNamedItem: string -> attr = "" [@@bs.send.pipe: t]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [NamedNodeMap.t]
    value). *)
external removeNamedItemNS:
  ?namespace:string -> localName:string -> attr =
  "" [@@bs.send.pipe: t]
