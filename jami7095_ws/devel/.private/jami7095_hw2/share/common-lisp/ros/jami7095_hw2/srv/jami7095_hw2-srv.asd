
(cl:in-package :asdf)

(defsystem "jami7095_hw2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EchoString" :depends-on ("_package_EchoString"))
    (:file "_package_EchoString" :depends-on ("_package"))
  ))