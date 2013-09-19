 {-
 Se dau a) un numar intreg i si b) o colectie arbitrar de lunga (f1, f2, ..., fn) de functii care accepta ca argument un numar intreg si intorc tot un numar intreg.
 Sa se scrie un program care intoarce o colectie de numere intregi reprezentand rezultatele aplicarii acelor functii asupra valorii i. 
 Exemplu de input: 4 si [add_one, multiply_by_five] => output-ul va fi [5, 20]. 
 Alt exemplu de input: 7 si [subtract_three, add_two, multiply_by_three] => output-ul va fi [4, 9, 21]
 -}
 
 
	--rezolvare
 
	
	
	apply_func n func_list = [f n | f <- func_list] -- rezultatul aplicarii functiei pe n si lista de functii este multimea de valori (f n) unde n e primul paramtru al functiei initiale si f este preluat din lista de functii prin list comprehension
	
	-- Verificare:
	subtract_one n = n -1
	add_five n = n + 5
	multiply_by_seven n = n * 7
	merge = apply_func 1 [subtract_one, add_five,multiply_by_seven] 
	