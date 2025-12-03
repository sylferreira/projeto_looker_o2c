# Data dictionary — O2C

Table documentation **fact_o2c** on pipeline BigQuery + Looker.

---

## Data Structure

| Field | Type | Description |
|------|------|-----------|
| order_id | INT64 | Unique order identification |
| order_type_id | STRING | SAP order code |
| sales_org_id | STRING | Sales organization group  |
| distribution_channel_id | STRING | Channel (customer) |
| division_id | STRING | Division (customer) |
| customer_id | STRING | Customer |
| sold_to_party | STRING | Customer (billing) |
| ship_to_party | STRING | Customer (delivery) |
| product_id | STRING | SKU/Item |
| plant_id | STRING | Plant (factory) |
| sales_document_date | DATE | Order date |
| created_on | DATE | SAP order creation date|
| created_by | STRING | SAP user |
| requested_delivery_date | DATE | Date requested by customer to deliver the order |
| confirmed_delivery_date | DATE | Date where the customer receive the order |
| planned_goods_issue_date | DATE | Planned date to billing order |
| actual_goods_issue_date | DATE | Order date to billing order |
| order_qty | INT64 | Quantity of itens ordered |
| confirmed_qty | INT64 | Quantity of itens confirmed by the customer |
| delivery_qty | INT64 |  Quantity of itens delivered |
| rejected_qty | INT64 |  Quantity of itens rejected |
| net_value | FLOAT64 | Liquid value of the order |
| delivery_document_number | STRING | Delivery numnber |
| billing_document | STRING | Billing document |
| offender_code | STRING | Offender code |
| rejection_reason_id | STRING | Reason of rejection |
| created_at | TIMESTAMP | Date o create of the rejection |

---

## Metrics (VIEW vw_o2c_metrics)

- **fill_rate** = delivery_qty / order_qty  
- **rejection_rate**  
- **leadtime_confirmed**  
- **leadtime_agi**  
- **gap_category**  
- **requested_week / confirmed_week / agi_week**  

---

## Observations

- Date are **DATE**, not DATETIME  
- Numeric fields as INT64  
- Offender is a Supply Chain  category analysis
