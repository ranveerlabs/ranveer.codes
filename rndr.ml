type html = 
    | Text of string
    | Element of string * html list
let rec render node =
    match node with
    | Text s -> s
    | Element (tag, children) -> 
            let rendered_children = List.map render children in
            let content = String.concat "" rendered_children in
            "<" ^ tag ^ ">" ^ content ^ "</" ^ tag ^ ">"
let page =
    Element ("h1", [
        Text "ran";
        Element ("em", [Text "veer"])
    ])
let () = print_endline (render page)
