# Bellabeat Consumer Smart Device Data Analysis
### Google Data Analytics Professional Certificate Capstone Case Study

## 1. Project Overview & Business Case
Bellabeat is a high-tech manufacturer of health-focused products designed specifically for women. While currently a successful, specialized company, Bellabeat has the potential to expand into a larger player in the global smart device market. 

The goal of this case study is to analyze public smart device fitness data from non-Bellabeat users to unlock consumer behavioral insights. Following the structured data analysis framework (**Ask, Prepare, Process, Analyze, Share, and Act**), this project translates technical data tracking metrics into a high-level marketing strategy presentation tailored for Urška Sršen (Cofounder and Chief Creative Officer) and the Bellabeat executive team.

---

## 2. Project Presentation & Dashboard Overview
> **Note:** Due to local system architecture and licensing constraints, the interactive dashboard visualizations and the comprehensive executive slide deck have been fully compiled into a professional presentation document for direct download.

* 📁 **Executive Slide Deck:** [Download the PowerPoint Presentation](./documents/bellabeat_dashboard_presentation.pptx)

### Final Dashboard Static Preview:
![Bellabeat Executive Dashboard Snapshots](./dashboard_preview.png)
*Figure 1: Full Executive Performance Dashboard capturing user step distribution, caloric ROI, and sedentary lifestyle vulnerabilities.*

---

## 3. Data Pipeline & Technical Stack
The analysis required orchestrating multiple data technologies to clean, process, and extract meaningful metrics from 30 days of Fitbit user tracker records:

* **Data Storage & Extraction (SQL):** Google BigQuery was utilized to execute initial database queries, filter out duplicate logs, and perform large-scale aggregations on user physical activity, steps, and sedentary metrics.
* **Data Transformation (Python):** Jupyter Notebooks utilizing `Pandas` and `NumPy` were leveraged to handle advanced formatting, re-structure datetime parameters, map user behaviors, and treat missing data inputs.
* **Data Validation (Excel):** Microsoft Excel spreadsheets were deployed as a manual quality assurance environment to sanity-check aggregated baseline rows and audit financial/caloric summary equations.
* **Data Visualization (Tableau):** Tableau Desktop was used to isolate performance variables and combine statistical plots into a unified executive dashboard layout.

---

## 4. Key Sheet Breakdown & Analysis Metrics

| Visualization Title | Chart Type | Key Metrics Evaluzed | Core Business Analytical Value |
| :--- | :--- | :--- | :--- |
| **Average Steps Per ID** | Horizontal Bar Chart | `Average Steps` by `Id` | Maps user performance benchmarks against the standard medical recommendation of 10,000 steps per day. |
| **Average Calories Per ID** | Horizontal Bar Chart | `Average Calories` by `Id` | Establishes base energy metabolic rates to isolate differences in daily active energy burn profiles. |
| **Average Sedentary Minutes** | Horizontal Bar Chart | `Average Sedentary Minutes` | Quantifies the volume of completely inactive time logged across individual user tracking profiles. |
| **Total Steps vs. Distance** | Scatter Plot + Trend | `Total Distance` vs. `Total Steps` | Serves as a logical baseline validation mapping to ensure device hardware data metrics scale predictably. |
| **Very Active Mins vs. Calories** | Scatter Plot + Trend | `Daily Calories` vs. `Very Active Mins` | Quantifies the clear statistical ROI of high-intensity movement intervals relative to caloric loss. |
| **Active Time vs. Sedentary Time** | Scatter Plot + Trend | `Sedentary Mins` vs. `Very Active Mins` | Evaluates whether engaging in acute high-intensity workouts successfully drops a user's macro sedentary profile. |

---

## 5. Core Insights Derived From Data
* **The "Active Sedentary" Trap:** The data shows that the vast majority of tracked consumers spend **600 to 1,100 minutes per day completely sedentary** (approx. 10 to 18 hours). Worryingly, individuals logging high daily step counts still register massive baselines of prolonged stillness.
* **Short High-Intensity Yields High ROI:** The *Very Active Minutes vs. Calories* plot reveals a steep positive trajectory. Brief windows of 20 to 40 minutes of intense activity generate immediate, substantial spikes in caloric burn.
* **Workouts Don't Eliminate Desk Hours:** The horizontal trendline in the *Active Time vs. Sedentary Time* plot reveals that increasing intense workout metrics does not automatically scale down an individual's macro sedentary baseline. Users log a quick exercise session but remain seated for the vast majority of their standard daily routine.

---

## 6. Strategic Marketing Recommendations ("Act" Phase)
1. **Pivot to Movement Integration Messaging:** Position Bellabeat marketing campaigns away from intensive gym-culture fitness tracking and market the devices as "lifestyle wellness companions." Emphasize features like localized haptic alerts that gently remind users to break up corporate desk hours.
2. **Promote "Micro-HIIT" App Integration:** Use the strong positive correlation between *Very Active Minutes* and high caloric expenditure to market quick, efficient, 15-to-20 minute High-Intensity Interval Training (HIIT) guides inside the Bellabeat app explicitly targeted to time-constrained working professional women.
3. **Gamification of Inactive Disruption:** Introduce mid-week structural challenges inside the Bellabeat app ecosystem to break up the static desk patterns exposed by the sedentary metrics. Instead of rewarding step count milestones alone, reward consumers for breaking consecutive inactive hours.

---

## 📂 Repository Organization
* `/sql`: Contains the `.sql` scripts used in Google BigQuery for cleaning and user database aggregation.
* `/notebooks`: Houses the `.ipynb` files containing Python scripts and data exploration frameworks.
* `/data`: Storage folder for verified Excel files and base documentation sheets.
* `/documents`: Holds the comprehensive PowerPoint presentation deck (`.pptx`) and executive reports.
