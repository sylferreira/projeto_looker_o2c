CREATE SCHEMA IF NOT EXISTS `sap-orders-2324.sap_template_2023_2024`;

CREATE TABLE IF NOT EXISTS `sap-orders-2324.sap_template_2023_2024.fact_o2c` (
    order_id                       INT64,
    order_type_id                  STRING,
    sales_org_id                   STRING,
    distribution_channel_id        STRING,
    division_id                    STRING,
    customer_id                    STRING,
    product_id                     STRING,
    plant_id                       STRING,
    rejection_reason_id            STRING,
    offender_code                  STRING,

    sales_document_date            DATE,
    created_on                     DATE,
    created_by                     STRING,

    sold_to_party                  STRING,
    ship_to_party                  STRING,

    order_qty                      INT64,
    confirmed_qty                  INT64,
    rejected_qty                   INT64,
    delivery_qty                   INT64,
    net_value                      FLOAT64,

    requested_delivery_date        DATE,
    confirmed_delivery_date        DATE,
    planned_goods_issue_date       DATE,
    actual_goods_issue_date        DATE,

    delivery_document_number       STRING,
    billing_document               STRING,

    created_at                     TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);
