Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DieHandle >> + aDieHandle [ 
 | handle |
 handle := DieHandle new.
 dice do: [:each | handle addDie: each].
 aDieHandle dice do: [:each | handle addDie: aDieHandle].
 ^ handle
]

{ #category : 'initialization' }
DieHandle >> addDie: aDie [ 
 dice add: aDie.
]

{ #category : 'accessing' }
DieHandle >> dice [ 
 ^ dice
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
