-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.5.0
-- Generated: 2019-08-14 12:23 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_monitor_status_report_1 (
    "schema_vendor"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "context"        VARCHAR(14)   ENCODE ZSTD NOT NULL,
    "id"             VARCHAR(36)   ENCODE ZSTD NOT NULL,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_monitor_status_report_1 IS 'iglu:com.snowplowanalytics.monitor/status_report/jsonschema/1-0-0';
