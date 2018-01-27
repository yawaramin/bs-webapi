(**)

type t = Yawaramin_BsWebapi_Common.htmlCollection
type 'a element = 'a Yawaramin_BsWebapi_Element.supertype

external item: t -> 'a element Js.nullable = "" [@@bs.send]
external length: t -> int = "" [@@bs.get]
external namedItem: t -> 'a element Js.nullable = "" [@@bs.send]
