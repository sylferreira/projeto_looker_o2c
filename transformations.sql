-- VIEW PRINCIPAL PARA O LOOKER
CREATE OR REPLACE VIEW `sap-orders-2324.sap_template_2023_2024.vw_o2c_metrics` AS
SELECT
    *,
    
    -- MÉTRICAS
    SAFE_DIVIDE(delivery_qty, order_qty) AS fill_rate,
    SAFE_DIVIDE(confirmed_qty, order_qty) AS confirmation_rate,
    SAFE_DIVIDE(rejected_qty, order_qty) AS rejection_rate,
    
    -- LEAD TIMES
    DATE_DIFF(confirmed_delivery_date, sales_document_date, DAY) AS leadtime_confirmed,
    DATE_DIFF(actual_goods_issue_date, sales_document_date, DAY) AS leadtime_agi,
    
    -- CLASSIFICAÇÃO DE GAP
    CASE 
        WHEN delivery_qty = 0 THEN "Sem entrega"
        WHEN delivery_qty < order_qty THEN "Parcial"
        ELSE "OK"
    END AS gap_category,

    -- SEMANAS
    FORMAT_DATE('%Y-%V', DATE(requested_delivery_date)) AS requested_week,
    FORMAT_DATE('%Y-%V', DATE(confirmed_delivery_date)) AS confirmed_week,
    FORMAT_DATE('%Y-%V', DATE(actual_goods_issue_date)) AS agi_week

FROM `sap-orders-2324.sap_template_2023_2024.fact_o2c`;
