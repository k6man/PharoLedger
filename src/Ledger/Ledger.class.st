Class {
	#name : #Ledger,
	#superclass : #Object,
	#instVars : [
		'dataPath'
	],
	#category : #Ledger
}

{ #category : #intialization }
Ledger class >> newWithData: datadirectory [
	"comment stating purpose of message"
	^ self new dataPath: datadirectory; yourself .
]

{ #category : #api }
Ledger >> balance [
	"comment stating purpose of message"

	^ self cmd: 'balance'
]

{ #category : #api }
Ledger >> cleared [
	"comment stating purpose of message"

	^ self cmd: 'cleared'
]

{ #category : #api }
Ledger >> cmd: cmd [
	"comment stating purpose of message"
	| my_cmd |
	my_cmd := (self ledgerPath ) , ' --pedantic -f ', (self dataPath ), '\main.ledger ', cmd.
	Transcript show: my_cmd ; cr. 
	^ LibC resultOfCommand: my_cmd.
]

{ #category : #accessing }
Ledger >> dataPath [
	^ dataPath
]

{ #category : #accessing }
Ledger >> dataPath: anObject [
	dataPath := anObject.
]

{ #category : #settings }
Ledger >> ledgerPath [
	"comment stating purpose of message"

	^ 'ledger_3.1.3_win_bin\ledger.exe'
]

{ #category : #api }
Ledger >> monthlyRegister [
	"comment stating purpose of message"

	^ self cmd: 'register'
]

{ #category : #api }
Ledger >> monthlyRegister: aCount [
	"comment stating purpose of message"

	^ self cmd: 'register', ' ',aCount.
]

{ #category : #api }
Ledger >> register [
	"comment stating purpose of message"

	^ self cmd: 'register'
]

{ #category : #api }
Ledger >> register: aCount [
	"comment stating purpose of message"

	^ self cmd: 'register', ' ',aCount.
]
