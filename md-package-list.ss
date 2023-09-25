#!/usr/bin/env gxi

(import :std/iter
        :std/format)

(def (main)
  (let (pkg-list (call-with-input-file "package-list" read))
    (printf "| Package | Description |~n")
    (printf "| ------- | ----------- |~n")
    (for ([pkg . plist] pkg-list)
      (let (description (pgetq description: plist))
        (printf "| [~a](https://~a) | ~a |~n" pkg pkg description)))))
