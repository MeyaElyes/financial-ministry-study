-- Sample data for testing
-- This runs after table creation

-- Insert sample budget data
INSERT INTO budget_data (year, category, amount, country) VALUES
(2023, 'Education', 5000000.00, 'Tunisia'),
(2023, 'Health', 3500000.00, 'Tunisia'),
(2023, 'Defense', 2500000.00, 'Tunisia'),
(2023, 'Infrastructure', 4000000.00, 'Tunisia'),
(2024, 'Education', 5500000.00, 'Tunisia'),
(2024, 'Health', 3800000.00, 'Tunisia'),
(2024, 'Defense', 2700000.00, 'Tunisia'),
(2024, 'Infrastructure', 4500000.00, 'Tunisia');

-- Insert sample economic indicators
INSERT INTO economic_indicators (year, gdp, inflation_rate, unemployment_rate) VALUES
(2020, 120000000.00, 5.6, 15.3),
(2021, 125000000.00, 6.2, 16.2),
(2022, 130000000.00, 8.3, 15.8),
(2023, 135000000.00, 9.1, 15.5),
(2024, 140000000.00, 7.5, 14.9);

-- Insert sample revenue data
INSERT INTO government_revenue (year, source, amount) VALUES
(2023, 'Taxes', 18000000.00),
(2023, 'Customs', 3000000.00),
(2023, 'Other', 2000000.00),
(2024, 'Taxes', 19000000.00),
(2024, 'Customs', 3200000.00),
(2024, 'Other', 2300000.00);

-- Insert sample expenditure data
INSERT INTO government_expenditure (year, category, amount) VALUES
(2023, 'Salaries', 8000000.00),
(2023, 'Subsidies', 5000000.00),
(2023, 'Infrastructure', 4000000.00),
(2023, 'Debt Service', 3000000.00),
(2024, 'Salaries', 8500000.00),
(2024, 'Subsidies', 5200000.00),
(2024, 'Infrastructure', 4500000.00),
(2024, 'Debt Service', 3100000.00);
