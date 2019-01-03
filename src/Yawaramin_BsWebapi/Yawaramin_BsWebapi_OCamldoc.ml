(** Used by the docs script to post-process generated HTML OCamldocs.
    Currently, linkifies all type and value names so that reader can
    click on them to get an anchor link to the specific name.

    The output JavaScript is meant to be run in the [docs] subdirectory.
    See [scripts/docs.sh] for the actual usage. *)

external format: string -> string array -> string = "" [@@bs.module "util"] [@@bs.variadic] 

(** Relies on OCamldoc's generated HTML output structure. *)
let link desc contents =
  let descLower = Js.String.toLowerCase desc in
  let replacement = format
    {|<span id="%s$1"><a href="#%s$1" class="keyword">%s</a>|}
    [|desc; desc; descLower|] in

  {j|<span id="$desc([^"]+)"><span class="keyword">$descLower</span>|j}
  |. Js.Re.fromStringWithFlags ~flags:"g"
  |. Js.String.replaceByRe replacement contents

let linkNames filename = filename
  |> Node.Fs.readFileAsUtf8Sync
  |> link "TYPE"
  |> link "VAL"
  |> Node.Fs.writeFileAsUtf8Sync filename

let processHtmls filename =
  if Js.String.endsWith ".html" filename then linkNames filename

let () = "." |> Node.Fs.readdirSync |> Js.Array.forEach processHtmls
