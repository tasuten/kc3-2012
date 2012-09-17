; Clojureでの例
(println "java.vm.version is"
	(. System getProperty "java.vm.version")
)
; -> java.vm.version is 20.10-b01-428

