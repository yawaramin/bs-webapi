type 'a element = 'a Yawaramin_BsWebapi_Element.supertype
type t

external item: int -> 'a element Js.nullable = "" [@@bs.send.pipe: t]
external length: t -> int = "" [@@bs.get]
external namedItem: string -> 'a element Js.nullable = "" [@@bs.send.pipe: t]
