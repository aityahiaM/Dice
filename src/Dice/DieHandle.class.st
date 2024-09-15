Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'initialization' }
DieHandle >> addDie: aDie [ 
 dice add: aDie.
]

{ #category : 'initialization' }
DieHandle >> diceNumber [ 
 ^ dice size 
]

{ #category : 'initialization' }
DieHandle >> initialize [ 
 dice := OrderedCollection new. 
]

{ #category : 'accessing' }
DieHandle >> roll [
 " Itère sur chaque dé et collecte ces résultats dans une nouvelle collection pour les additionner par la méthode sum"
 ^ (dice collect: [ :each | each roll]) sum.
]
