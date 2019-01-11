type 'a t
external next: 'a t -> < _done: bool; value: 'a Js.nullable > Js.t = "" [@@bs.send]
