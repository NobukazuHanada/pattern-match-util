(defmacro match-ok (result)
  ``#(ok ,,result))

(defmacro alet-ok
  [(cons ok-data  body)
    `(let ([(match-ok it) ,ok-data])
       ,@body)])

(defmacro match-error (msg)
  ``#(error ,,msg))

(defmacro alet-error
  [(cons error-msg body)
   `(let ([(match-error it) ,error-msg])
      ,@body)])