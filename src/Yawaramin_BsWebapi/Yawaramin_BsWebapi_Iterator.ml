type 'a t = 'a Yawaramin_BsWebapi_Common.iterator
external next: 'a t -> < _done: bool; value: 'a Js.nullable > Js.t = "" [@@bs.send]
