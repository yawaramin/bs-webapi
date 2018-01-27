type t
type attr = Yawaramin_BsWebapi_Attr.this Yawaramin_BsWebapi_Common.t

external length: t -> int = "" [@@bs.get]
external item: int -> attr Js.nullable = "" [@@bs.send.pipe: t]
external getNamedItem: string -> attr Js.nullable =
  "" [@@bs.send.pipe: t]

external getNamedItemNS:
  ?namespace: string -> localName:string -> attr Js.nullable =
  "" [@@bs.send.pipe: t]

external setNamedItem: attr -> attr Js.nullable = "" [@@bs.send.pipe: t]
external setNamedItemNS: attr -> attr Js.nullable =
  "" [@@bs.send.pipe: t]

external removeNamedItem: string -> attr = "" [@@bs.send.pipe: t]
external removeNamedItemNS:
  ?namespace:string -> localName:string -> attr =
  "" [@@bs.send.pipe: t]
