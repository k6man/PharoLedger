Class {
	#name : #BaselineOfLedger,
	#superclass : #BaselineOf,
	#category : #BaselineOfLedger
}

{ #category : #baseline }
BaselineOfLedger >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec package: 'Ledger' with: [ spec requires: #('DataFrame') ];
			     baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame:v2.0/src' ].
		]
	
]

{ #category : #accessing }
BaselineOfLedger >> projectClass [
	^ MetacelloCypressBaselineProject
]
