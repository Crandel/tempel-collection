sql-mode

(pgfn "CREATE OR REPLACE FUNCTION " (s function-name) "(" (s arguments) ")" n
"RETURNS " (p "void") " AS $$" n
"DECLARE" n> (p "-- declare variable as: name type := value;") n
"BEGIN" n> 
r> n
"END;" n
"$$ LANGUAGE plpgsql" n
)
