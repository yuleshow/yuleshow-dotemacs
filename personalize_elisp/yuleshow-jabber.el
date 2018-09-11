

;; (require 'jabber-autoloads)




;; (require 'jabber-autoloads)
(require 'jabber-autoloads)

;; (setq jabber-account-list
;;       '(("yuleshow@gmail.com"
;; 	 (:port.443)
;; 	 (:network-server."talk.google.com")
;; 	 (:connection-type."ssl")
;; 	 )
;; 	)
;;       )


;; (setq jabber-username "yuleshow" ;; notice: leave off the @gmail.com
;;       jabber-server "gmail.com"     ;; this is a part of your user ID, not a part of the server you will connect to.
;;       jabber-network-server "talk.google.com"  ;; this is the actual server to connect to
;;       jabber-port 5223
;;       jabber-connection-type 'ssl)


(setq jabber-account-list '(

                            ("yuleshow@gmail.com"

			      (:password."P1rate5Cari88ean")

                              (:network-server."talk.google.com")

                              (:port.443)
;                              (:port.5223)

                              (:connection-type.ssl))

                            ))

;; (setq jabber-username "yuleshow" ;; notice: leave off the @gmail.com
;;       jabber-server "gmail.com"     ;; this is a part of your user ID, not a part of the server you will connect to.
;;       jabber-network-server "talk.google.com"  ;; this is the actual server to connect to
;;       jabber-port 443
;;       jabber-connection-type 'ssl)

(provide 'yuleshow-jabber)
