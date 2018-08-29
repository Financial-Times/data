## Description of source

Data on all pledges made by the Hong Kong Jockey Club’s charity arm, first as a subsidiary (Hong Kong Jockey Club (Charities) Ltd) of the club from July 1, 1979 to June 30, 1993, then as a charitable trust (Hong Kong Jockey Club Charities Trust) from July 1, 1993 to June 30, 2017.
Data for all the fields detailed below comes directly from annual lists of pledged donations released by the club with the exception of “category”, which is based on Financial Times analysis of a given group or project. The pledges of HK$51.1bn in total covered by the data account for 98.9 per cent of all those made by the charity arm since it was formally established in 1959.

## Description of fields

- `project`: name of the group/project to which funding was pledged
- `project_alt_name`: other names used to refer to a group/project in previous annual reports
- `category`: refers to one of eleven categories based on the intended recipient of pledged funds. These categories are based on FT analysis do not appear in the annual lists released by the club, which classify pledges using categories that can change from year to year.

	1. Government – used for pledges to government departments, statutory bodies and other public institutions.

	2. University – used for pledges related to Hong Kong universities, including those for non-educational purposes.

	3. Other – used for pledges to groups/projects which do not fall under any of the other categories or for those which are made to multiple groups/projects which when these fall under more than one category.

	4. Social welfare provision (HKCSS agency members) – used for pledges to organisations which belong to the Hong Kong Council of Social Service as given in the members list from the group’s annual report for 2017.

	5. Jockey Club – used for pledges to organisations or projects directly related to the Hong Kong Jockey Club, including affiliate companies controlled by the club, club joint ventures and the provision of related services. Does not include club-run riding schools.

	6. Trust Initiative – used for pledges to “Trust Initiated Projects”, i.e. those identified and initiated by the club's charity arm and involving one or multiple organisations (see category 9).

	7. Tung Wah – used for pledges to Tung Wah Group of Hospitals, a powerful and prestigious charity group established in 1870 by Chinese merchants to provide basic medical and social services for the broader Chinese community and which served as a key point of contact between the local populace and the colonial government.

	8. Caritas – used for pledges to Caritas Hong Kong and related bodies.

	9. Riding schools – used for pledges to cover operating costs at any or all of three club-run public riding schools located at Lei Yue Mun, Pokfulam and Tuen Mun, which account for the vast majority in this category, as well as pledges to Hong Kong equestrian groups.

	10. Ocean Park – used for pledges to Ocean Park Corporation, a local theme park originally established and run by the club in 1977, as well as the Ocean Park Trust Fund.

	11. Po Leung Kuk – used for pledges to Po Leung Kuk, a powerful and prestigious educational charity group established in 1882 by Chinese elites in Hong Kong as the Society for the Protection of Women and Children.

- `year`: the 12-month period ending on June 30 of a given calendar year during which pledges were made.
- `annual_allocation`: (unit: HK$1,000) refers to total pledges made to a group/project and recognized by the club as regular subvention .
- `non_annual_allocation`: (unit: HK$1,000) refers to total pledges made to a group/ project which are not recognized by the club as regular subvention (designated in annual lists of pledges as “The Hong Kong Jockey Club Community Project Grant” since 2015).
- `total`: (unit: HK$1,000) refers to total combined pledges made to a group/project (`annual_allocation` plus `non_annual_allocation`).
- `notes_annual`: provides details on the specific annual pledges made to a group/project for a given year, namely their purpose and size (unit: HK$1,000).
- `notes_non-annual`: provides details on the specific non-annual pledges to a group/project for a given year, namely their number, purpose and size (unit: HK$1,000).
