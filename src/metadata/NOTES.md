# NOTES

## INCONSISTENSIES
* http://kerndatensatz-forschung.de/owl/Basis#hatUebergeordnetesProjekt modelled as ObjectProperty in VIVO alignment, and as Data Property in KDSF v 1.3 ( Schale )
	* The specification of the title of the superordinate project serves to map the logical structure. A sub-project exists if, for example, its own funding code has been assigned. The level of detail of the sub-project designation is left to the institution. If a project must remain confidential, it must be assigned to the "Third-party funder" "Not declared". In this case, the title of the parent project can also be left blank.
	* the need to take not declared projects into account, could maybe be done as an object property with constraints in order to keep the links in the project structure at the same time as visualizations is dependent on the project entity having certain properties, such as i.e 'funding code' in place ?