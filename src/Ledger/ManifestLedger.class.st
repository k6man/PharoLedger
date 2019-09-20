"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestLedger,
	#superclass : #PackageManifest,
	#category : #'Ledger-Manifest'
}

{ #category : #'code-critics' }
ManifestLedger class >> ruleRBCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Ledger #cmd: #false)) #'2019-08-05T13:51:38.675241+02:00') )
]
