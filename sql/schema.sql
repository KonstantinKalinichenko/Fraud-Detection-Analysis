create table traffic_logs (
	userid BIGINT NOT NULL,
	devicemodel TEXT,
	browser TEXT,
	os TEXT,
	useragent TEXT,
	ip INET,
	ipcountry TEXT,
	site TEXT NOT NULL,
	hourid SMALLINT NOT NULL
);