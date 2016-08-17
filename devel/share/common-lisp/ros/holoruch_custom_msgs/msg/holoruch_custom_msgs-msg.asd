
(cl:in-package :asdf)

(defsystem "holoruch_custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "EdgePixels" :depends-on ("_package_EdgePixels"))
    (:file "_package_EdgePixels" :depends-on ("_package"))
  ))