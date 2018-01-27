(**)

type t = Yawaramin_BsWebapi_Common.htmlCollection
type 'a element = 'a Yawaramin_BsWebapi_Element.supertype

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [t] value). *)
external item: int -> 'a element Js.nullable = "" [@@bs.send.pipe: t]
external length: t -> int = "" [@@bs.get]

(** [\[\@\@bs.send.pipe: t\]] (last argument is a [t] value). *)
external namedItem: string -> 'a element Js.nullable = "" [@@bs.send.pipe: t]
