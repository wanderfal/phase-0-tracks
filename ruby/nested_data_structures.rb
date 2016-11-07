dept_store = {
		first_floor: {
				electronics: [
						"Televisions",
						"Washing Machines",
						"Dryers",
						"Ranges",
						"Microwaves"
				],
				hardware: [
						"Lawnmowers",
						"Power Tools",
						"Outdoor Lighting",
				],
				cust_serv: "Pick-up Area",
		},
		second_floor: {
				children: {
						boys: [
								"shoes",
								"shirts",
								"pants"
						],
						girls: [
								"shoes",
								"shirts",
								"pants",
								"dresses"
						]
				},
				mens: [
						"shoes",
						"shirts",
						"pants"
						]
				},
		third_floor: {
				womens: [
						"shoes",
						"shirts",
						"pants",
						"dresses"
						]
		}
}


p dept_store[:third_floor][:womens][3]
p dept_store[:second_floor][:children][:boys][0]
p dept_store[:first_floor][:cust_serv]