type 'a element = 'a Yawaramin_BsWebapi_Element.supertype
type 'a t = ([< `element | `characterData ] as 'a) Yawaramin_BsWebapi_EventTarget.t

external previousElementSibling: 'a t -> 'b element Js.nullable = "" [@@bs.get]
external nextElementSibling: 'a t -> 'b element Js.nullable = "" [@@bs.get]
