Class {
	#name : #EchartsExampleComponent,
	#superclass : #WAComponent,
	#category : #'ECharts-Examples'
}

{ #category : #accessing }
EchartsExampleComponent class >> register [
	| application |
	application := WAAdmin register: self asApplicationAt: 'echarts'.
	application addLibrary: EChartsFileLibrary
]

{ #category : #accessing }
EchartsExampleComponent class >> reregister [
	"EchartsExampleComponent reregister"
	self
		unregister;
		register
]

{ #category : #accessing }
EchartsExampleComponent class >> unregister [
	WAAdmin unregister: 'echarts'
]

{ #category : #accessing }
EchartsExampleComponent >> echartsScriptOn: canvas [
	| chart |
	chart := canvas eCharts
			height: 400;
			width: 600;
			theme: 'dark';
			yourself.
	chart options title text: 'ECharts Getting Started Example'.
	chart options legend data: #('Sales').
	chart options xAxis
		data: #('Shirts' 'Cardigans' 'Chiffons' 'Pants' 'Heels' 'Socks').
	chart options
		series: (OrderedCollection new
				add: (Dictionary new
						at: #name put: 'sales';
						at: #type put: 'bar';
						at: #data put: #(5 20 36 10 10 20);
						yourself);
				yourself)
]

{ #category : #accessing }
EchartsExampleComponent >> renderContentOn: canvas [
	canvas heading
		level1;
		with: [ canvas text: 'Apache ECharts Examples' ].
	canvas div script: (self echartsScriptOn: canvas)
]
