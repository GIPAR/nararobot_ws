
(cl:in-package :asdf)

(defsystem "msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "People" :depends-on ("_package_People"))
    (:file "_package_People" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "Proxemic" :depends-on ("_package_Proxemic"))
    (:file "_package_Proxemic" :depends-on ("_package"))
  ))