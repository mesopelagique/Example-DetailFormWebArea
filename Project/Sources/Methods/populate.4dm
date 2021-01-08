//%attributes = {}

If (Shift down:C543)
	For each ($article; ds:C1482.Article.all())
		$article.drop()
	End for each 
End if 

If (ds:C1482.Article.all().length=0)
	
	var $searchs : Collection
	var $search : Text
	var $article : cs:C1710.ArticleEntity
	
	
	$searchs:=New collection:C1472("blog"; "developer"; "discuss")
	
	For each ($search; $searchs)
		
		$article:=ds:C1482.Article.new()
		$article.name:=$search
		$article.url:="https://"+$search+".4d.com/"
		$article.save()
		
	End for each 
	
	$searchs:=New collection:C1472("Tic-Tac-Toe"; "Random Number Generator"; "Roll a Die"; "Flip a Coin"; "Recursion")
	
	For each ($search; $searchs)
		
		$article:=ds:C1482.Article.new()
		$article.name:=$search
		$article.url:="https://www.google.com/search?q="+urlencodesimple($search)
		$article.save()
		
	End for each 
	
	$article:=ds:C1482.Article.new()
	$article.name:="Hello World"
	$article.url:="4DAction/Hello"
	$article.save()
	
	
	$article:=ds:C1482.Article.new()
	$article.name:="HTML String"
	$article.url:="<h1>Header</h1><b>bold</b><i>italic</i>"
	$article.save()
	
End if 