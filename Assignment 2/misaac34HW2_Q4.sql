SELECT * FROM suppliers;

SELECT `pid`, `pname` FROM parts WHERE 'black' LIKE color;

SELECT count( DISTINCT(pid)) FROM parts;

SELECT `sname`, `sid`, `pname`, `pid`, `cost`
FROM suppliers
CROSS JOIN parts, catalog
ORDER BY suppliers.sname;

SELECT DISTINCT parts.pid, parts.pname
FROM parts
WHERE 'black' LIKE color;

SELECT DISTINCT catalog.sid, suppliers.sname
FROM catalog
CROSS JOIN parts, suppliers
WHERE catalog.pid IN (SELECT DISTINCT pid FROM parts where 'red' OR 'green' LIKE color);

SELECT DISTINCT catalog.sid, suppliers.sname
FROM catalog
CROSS JOIN parts, suppliers
WHERE catalog.pid IN (SELECT DISTINCT pid FROM parts where 'red' OR 'green' LIKE color);

SELECT DISTINCT suppliers.sname
FROM catalog
CROSS JOIN suppliers, parts
WHERE catalog.pid IN (SELECT pid FROM parts where color='blue');

SELECT DISTINCT catalog.pid, parts.pname, MAX(catalog.cost)
FROM catalog
CROSS JOIN parts
GROUP BY catalog.sid
