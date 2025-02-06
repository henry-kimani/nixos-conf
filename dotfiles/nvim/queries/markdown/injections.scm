; extends
((inline) @injection.content
          (#lua-match? @injection.content "^%s*import")
          (#set! injection.language "typescript" )
          )

((inline) @injection.content
          (#lua-match? @injection.content "^%*import")
          (#set! injection.language "typescript")
)
((inline) @injection.content
          (#lua-match? @injection.content "^const")
          (#set! injection.language "typescript")
)

