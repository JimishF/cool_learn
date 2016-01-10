class List{
	item: String;
	next: List;

	init(i: String, n: next) : List {
		
		{
			item <- i;
			next <- n;

			self;
		}

	};




};

class Main inherits IO{

	main() : Object{
		let h : String <- "Hello ",
			w : String <- "World ",
			n : String <- "\n",
			undefined: List,
			list : (new List).init(h , 
						(new List).init(w, 
							(new List).init(n, undefined )))
		in
			out_string(h.concat(w.concat(n)))
	};
};
