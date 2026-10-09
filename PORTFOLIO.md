# Asanjitha Methnuwan Jayasekara
**Industrial Analytics M.Sc. Candidate (Uppsala University) | Mechatronics Engineering Honors Graduate | AI, Control Systems & Smart Manufacturing**  
📍 Uppsala, Sweden · 📧 [masanjitha3@gmail.com](mailto:masanjitha3@gmail.com) · 📱 [+46 73 704 07 60](tel:+46737040760) · 🌐 [LinkedIn Profile](https://linkedin.com)

---

## 🎯 Executive Summary
Mechatronics Engineer and M.Sc. candidate in Industrial Analytics at Uppsala University, combining a 4-year B.Sc. (Honours) in Mechatronics Engineering (240 ECTS) with cutting-edge expertise in mechanical dynamics, machine element dimensioning, dynamic simulations, and computational modeling. Experienced in structural analysis, CAD/CAM systems, and fault diagnosis. Published peer-reviewed first author in component fatigue strength and stress concentrations.

---

## 🔬 Peer-Reviewed Journal Publication

- **Title:** *Effect of a notch on the fatigue strength of a gear shaft*
- **Authors:** **H. M. A. Jayasekara** (Main Author) and S. D. R. Perera
- **Journal:** *Engineer: Journal of the Institution of Engineers, Sri Lanka*, vol. 58, no. 2, pp. 113–118, 2025.
- **DOI:** [10.4038/engineer.v58i2.7698](https://doi.org/10.4038/engineer.v58i2.7698)
- **Key Contributions:**
  - Evaluated the influence of circumferential notch geometries on fatigue life under combined cyclic bending and torsion.
  - Calculated elastic stress concentration factors ($K_t$) and notch sensitivity indices ($q$).
  - Validated classical fatigue criteria against finite element simulation (FEA) and empirical S-N test data.

---

## 🛠️ Core Competencies & Technical Skills

| Domain | Key Skills & Technologies |
| :--- | :--- |
| **Mechanical & Dynamics** | Dynamic of Mechanical Systems, Vibration & Fault Diagnosis, Machine Elements, Kinematics, Control System Engineering, CAD/CAM (SolidWorks, Inventor) |
| **Industrial Analytics & AI** | Production Systems Modeling & Optimization, Industrial Optimization Methods, Artificial Intelligence for Industrial Analytics, Statistical Machine Learning, Virtual Soft Sensors & Anomaly Detection (PCA, Isolation Forest, Random Forest), Data Mining, Database Design |
| **Software & Simulation** | Python, C++, C, SQL, MATLAB / Simulink, HMI Interfaces |
| **Workshop & Prototyping** | Pneumatics, Hydraulic Systems, CNC Laser Cutting, Press Brakes, Arc/MIG Welding, Sensor & Actuator Integration, IoT architectures |

---

## 🤖 Featured Engineering & Robotics Projects

### 1. Pick And Place Robot Manipulator (Bachelor's Mechatronics Capstone Project)
- **Objective:** Develop a robotic manipulator system capable of achieving a specified target while accurately detecting the correct container containing a table tennis ball.
- **Core Controller & Processing:** Arduino Uno-based controller orchestrating coordinated kinematics, multi-channel PWM servo timing, sensor interrogation, and autonomous decision-making algorithms.
- **Kinematics & Multi-DoF Actuation (7 Servo Motors):**
  - **M1 — Base Servo Motor:** 360°/azimuth planar rotation mounted on a dual-tier circular acrylic turntable supported by low-friction ball transfer bearings.
  - **M2 & M3 — Dual Shoulder Servo Motors:** Parallel synchronized servo architecture delivering elevated torque to support arm payload and prevent linkage deflection.
  - **M4 — Elbow Servo Motor:** Articulated intermediate link controlling vertical reach and arm elevation.
  - **M5 — Wrist Servo Motor:** Pitch adjustment for end-effector planar alignment.
  - **M6 — Gripper Rotating Servo:** Roll/yaw rotation for adaptive orientation toward target containers.
  - **M7 — Gripper Servo:** Mechanical claw with geared finger linkage for compliant grasping of table tennis balls and target containers.
- **Sensing & Intelligent Container Detection:**
  - **HC-SR04 Ultrasonic Distance Sensor:** Front-mounted ultrasonic transducer for real-time obstacle ranging and container distance measurement.
  - **Target Identification Logic:** Algorithmic verification routines to validate target distance, confirm container alignment, and detect the presence of the table tennis ball.
  - **Human-Machine Interface:** LCD 1602 (I2C interface) for real-time status output, coordinate feedback, and detection confirmation; auxiliary indicator lamp (H1) for process state signaling.
- **Electrical & Power Architecture:**
  - Dedicated external 5V 20A regulated power supply bus delivering high surge current for 7 concurrent servo motors without logic board resets or voltage dips.
  - Common-ground isolation architecture protecting Arduino logic from inductive motor spikes.
- **Mechanical Design & Prototyping:**
  - SolidWorks 3D CAD modeling with kinematic motion study.
  - Transparent precision laser-cut acrylic structural links, 3D printed components, custom servo horns, and aluminum bracketry.
  - Calibrated planar test grid for target verification and pick-and-place cycle validation.

### 2. Gas Turbine Emission Soft Sensor Pipeline & Predictive Analytics
*Siemens Energy Practice · AI & Industrial Analytics*
- **GitHub Repository:** [gas-turbine-soft-sensor-pipeline](https://github.com/Asanjitha97/gas-turbine-soft-sensor-pipeline)
- **Objective & Industrial Context:**
  - Developed an end-to-end industrial machine learning pipeline acting as a virtual soft sensor to estimate hard-to-measure Carbon Monoxide (CO) emissions in heavy-duty gas turbines.
  - Gas turbines operate under extreme aerodynamic and thermodynamic conditions (compressing air, combusting fuel, and spinning turbine blades at >3,000 RPM), creating complex, non-linear physical relationships across operational variables.
  - Circumvents the substantial installation, calibration, and maintenance costs of direct physical Continuous Emission Monitoring Systems (CEMS).
- **Sensor Degradation & Drift Simulation:**
  - Physical turbine sensors operating under harsh operational environments inevitably degrade or drift.
  - Injected synthetic Gaussian noise ($\mu = +15^\circ\text{C}$, $\sigma = 5^\circ\text{C}$) into the Ambient Temperature (AT) sensor over the final 500 operating hours to simulate real-world thermal drift and mechanical degradation.
- **Robustness & Unsupervised Anomaly Detection:**
  - Constructed an **Isolation Forest** unsupervised anomaly detector ($\text{contamination} = 0.02$) to detect and flag corrupted sensor readings.
  - Successfully identified and isolated 727 anomalous data points, preserving 36,006 clean operational records and protecting downstream models from contaminated telemetry.
- **Multicollinearity Diagnostics & PCA Dimensionality Reduction:**
  - Computed Pearson correlation matrices across 12 turbine sensors (AT, AP, AH, AFDP, GTEP, TIT, TAT, TEY, CDP, CO, NOX), revealing extreme multicollinearity (correlations up to 0.99 between compressor discharge pressure, exhaust pressure, and turbine temperatures).
  - Applied `StandardScaler` normalization followed by **Principal Component Analysis (PCA)**, compressing 12 correlated physical sensors into 7 orthogonal principal components while retaining **95% of cumulative physical variance**.
- **Virtual Estimation & Soft Sensor Performance:**
  - Trained a **Random Forest Regressor** ($n_{\text{estimators}} = 100$) on the PCA-reduced feature space (80/20 train-test split).
  - **Coefficient of Determination ($R^2$):** **0.9674** (~96.7% predictive accuracy).
  - **Mean Squared Error (MSE):** **0.1934**.
  - Tight scatter alignment between estimated CO and actual physical sensor measurements across dynamic load ranges.
- **Project Visualizations & Plots:**
  - `turbine_soft_sensor_predicted_vs_actual.png`: Soft Sensor Actual vs Predicted CO Emissions scatter plot showing tight adherence to the 1:1 parity line.
  - `turbine_sensor_correlation_matrix.png`: Sensor Correlation Matrix heatmap visualizing cross-sensor dependencies and multicollinearity.
  - `turbine_sensor_drift_degradation.png`: Time-series plot of simulated Ambient Temperature sensor degradation and drift onset.

### 3. Environmental & Economic Optimization of an Automated Assembly Line
*Production Systems Modeling & Optimization — Uppsala University*
- **Context & System:** Analyzed and optimized an automated automotive assembly line producing synchronizer blocker rings (carbon fiber friction stripes) for manual and dual-clutch gearboxes.
- **Discrete-Event Simulation (DES) Modeling:**
  - Implemented discrete-event simulation model across multi-operation automated stations (washers, carbon fiber stripe assembly, multi-stage stamping presses, quality inspection, curing, and unloading).
  - Modeled machine failures (MTTR & Availability) and buffer/conveyor dynamics.
  - Utilized **Ansys** alongside **FACTS Analyzer** with custom **C++ energy classes** (`OperationB`, `AssemblyB`, `ExtendedConveyorB`) to track real-time working, waiting, and transition power demand.
- **Input Data Modeling & Statistical Analysis:**
  - Performed statistical distribution fitting (using Python/SciPy) on historical press event logs (`Press1_event_log.xlsx`) to determine cycle time distributions, MTTR, and machine availability.
  - Performed steady-state warm-up time analysis to eliminate transient initialization bias.
- **Bottleneck Detection & Energy Optimization:**
  - Diagnosed top throughput bottlenecks and significant energy users.
  - Developed a **sub-batch release control strategy for the conveyorized washer (OP20)** based on downstream buffer levels, increasing washer idle time to drastically reduce Specific Energy Consumption (SEC) without degrading throughput (TH).
  - Evaluated multi-scenario improvements (SMED setup reduction, availability enhancements, buffer sizing, and finished goods inventory (FGI) dimensioning) to satisfy weekly stochastic demand (±5% variability) across 6 product variants with zero backlog.

### 4. Dynamic Multi-Body Bubble Collision & Merging Simulation
*Computer Programming II (1TD722) — Uppsala University*
- **Context & Architecture:** Developed an interactive, event-driven 2D physics simulation application using Python, Tkinter, and Object-Oriented Programming (OOP) principles.
- **Physics Engine & Dynamic Mechanics:**
  - Designed custom particle/bubble kinematic modeling with position, velocity vectors, radius, and continuous boundary reflections.
  - Implemented real-time Euclidean distance collision detection across multiple bodies.
  - Modeled **inelastic coalescence mechanics**: when two bubbles collide, they merge into a single larger body preserving mass/cross-sectional area ($A_{total} = r_1^2 + r_2^2$), computing momentum-weighted center of mass position and resulting velocity vectors ($\vec{v}_{new}$).
- **Event-Driven Graphical User Interface (GUI):**
  - Integrated Tkinter GUI controls enabling users to adjust particle count (1 to 15 bodies), adjust frame cycle delay / simulation speed in real time, and trigger start, pause, resume, and reset cycles dynamically.

### 5. Enterprise Relational E-Commerce Database & Index Optimization
*Database Design I (1DL301) — Uppsala University*
- **Context & Scope:** Architected and implemented a comprehensive relational e-commerce database system in MySQL from conceptual domain modeling to physical execution and query optimization.
- **Relational Modeling & Normalization:**
  - Designed conceptual Entity-Relationship (ER) model and mapped it into a fully normalized relational schema meeting **3rd Normal Form (3NF)** requirements with zero partial or transitive functional dependencies.
  - Implemented schema with foreign key constraints across multi-tier hierarchical product departments (self-referencing parent-child tree), customer profiles (password hashing, unique identifiers), multi-item orders, user ratings/reviews with domain validation checks, and many-to-many product-keyword mapping tables.
- **SQL Analytics & Query Optimization:**
  - Authored complex aggregation and reporting queries (e.g. departmental average product ratings with `COALESCE` / `LEFT JOIN`, hierarchical category discovery, discount ranking, and keyword similarity search).
  - Executed performance diagnostics using `EXPLAIN` query execution plans. Demonstrated optimization by implementing targeted **B-Tree indices** (`idx_product_discount`, `idx_product_featured`), reducing full table sequential scans to indexed range lookups.
- **Python Integration:**
  - Built interactive Python CLI database clients via `mysql-connector` enabling hierarchical category browsing and dynamic parameterized product discount updates with transactional commits.

### 6. Automotive Manufacturing Transformation: Lean, TOC & Industry 5.0
*Industrial Production Philosophies (1TS306) — Uppsala University*
- **Context & Operational Diagnostic:** Analyzed a systemic operational crisis at an automotive component supplier (XYZ Manufacturing) suffering from fluctuating quality, customer warranty claims, extended production lead times, and rising operational and energy costs.
- **Synthesized Industrial Philosophies:**
  - **Theory of Constraints (TOC):** Formulated bottleneck exploitation using the Five Focusing Steps and Drum-Buffer-Rope (DBR) scheduling to relieve shop floor starvation and slash cycle lead times.
  - **Toyota Production System / Lean:** Proposed Jidoka (autonomation) mechanisms and Poka-Yoke error-proofing to shift quality inspection from reactive post-assembly detection to proactive defect prevention at the source, coupled with Just-in-Time (JIT) waste elimination.
  - **Six Sigma (DMAIC):** Structured variance reduction methodology targeting high-risk assembly and machining operations to improve process capability indices ($C_p, C_{pk}$).
- **Industry 4.0 & 5.0 Modernization Strategy:**
  - Designed an IoT cyber-physical sensor network for predictive equipment maintenance and energy tracking to arrest mounting operational expenses.
  - Championed an **Industry 5.0 human-centric paradigm**, integrating cobots and ergonomic human-in-the-loop workstation redesigns to maintain operational agility over rigid full automation.
  - Leveraged **Discrete Event Simulation (DES)** and simulation-based multi-objective optimization to validate proposed layout modifications, buffer sizes, and scheduling rules prior to physical capital expenditure.

---

### 7. Transparency as a Supply Chain Strategy: Multi-Tier Risk Governance
*Operations & Supply Chain Management — Uppsala University*
- **Context & Supply Chain Challenge:** Investigated governance mechanisms to manage sustainability, ESG, and environmental risks across opaque, multi-layered global supply networks.
- **Agency Theory & The "Double Agency" Problem:**
  - Analyzed structural information asymmetries where buyer firms lack visibility beyond direct (Tier 1) suppliers.
  - Addressed the "double agency" vulnerability where Tier 1 contractors prioritize local profitability over parent company sustainability and labor directives when contracting lower tiers (Tier 2 textile mills, Tier 3 raw material farms).
- **Strategic Governance Framework:**
  - **Public Supply Chain Disclosure:** Evaluated open-source provenance tracking platforms (e.g., Patagonia's *Footprint Chronicles*) to dismantle information opacity.
  - **Direct Sourcing & Control:** Bypassed intermediary factory discretion by mandating and managing direct relationships with approved mills and farms.
  - **Third-Party Verification & Financial Incentives:** Analyzed independent verification audits (Fair Labor Association, Bluesign) coupled with positive reinforcement structures (accelerated payment terms, subsidized green financing, carbon-reduction bonuses) to align multi-tier supplier compliance.

---

## 💼 Professional & Engineering Experience

### 1. Mechanical Design Engineer — Dragon Arrow (Pvt) Ltd, Sri Lanka
*July 2024 – June 2025*
- Designed and engineered a **drone-mounted geophone implanter mechanism** with a multidisciplinary team for autonomous terrain-based geophysical data acquisition.
- Optimized payload kinematics, shock-dampening structures, and ground-penetration linkages under strict aerial weight and energy budgets.
- Authored technical engineering documentation, manufacturing drawings, and maintained R&D milestone delivery schedules.

### 2. Lecturer (Grade II) & Visiting Lecturer — SCOT Campus (Affiliated with De Montfort University, UK)
*October 2023 – May 2025*
- Served as **Module Leader for CAD/CAM and Engineering Design** under Pearson BTEC Higher National standards.
- Instructed engineering undergraduates in digital parametric modeling, finite element stress principles, and computer-aided manufacturing.

### 3. Demonstrator (Teaching Assistant) — The Open University of Sri Lanka
*June 2023 – October 2023*
- Conducted undergraduate laboratory experiments, tutorials, and practical assessments for **Control System Engineering**.
- Course coordinator for *Management for Engineers* and *Industrial Engineering* modules, overseeing academic logistics and student mentoring.

### 4. Engineering Intern — Elastomeric Engineering Co. Ltd, Sri Lanka
*March 2022 – July 2022*
- Designed and commissioned a **pneumatic scissor lift system** to optimize vertical ergonomic material handling in factory production.
- Conducted preventive and corrective maintenance on automated manufacturing cells, HMIs, CNC machinery, and hydraulic systems.

### 5. Engineering Intern — National Engineering Research and Development Centre (NERDC), Sri Lanka
*July 2021 – December 2021*
- Designed and fabricated a precision **feeder subsystem for an industrial Coconut Coir extraction machine** to guarantee consistent feed rates and human safety.
- Prepared failure mode and technical diagnostic report for an Automated Water Bottle Washing Machine.
- Hands-on workshop fabrication: CNC laser cutting, hydraulic press brake bending, and Arc/MIG welding.

---

## 🎓 Education

### Master of Science in Industrial Analytics
**Uppsala University, Sweden** — *Department of Civil and Industrial Engineering*  
*September 2025 – Present (Expected: June 2027)*
- **Focus:** Computational data modeling, dynamic system optimization, industrial machine learning, and database architecture.
- **Key Modules Completed / In Progress:**
  - Artificial Intelligence for Industrial Analytics
  - Industrial Optimization Methods
  - Production Systems Modelling and Optimisation
  - Statistical Machine Learning
  - Database Design I
  - Linear Algebra for Data Science
  - Operations and Supply Chain Management
  - Internet of Things

### Bachelor of Science Honours in Engineering (Mechatronics Engineering)
**The Open University of Sri Lanka** — *Department of Mechanical Engineering*  
*Completed: July 2023 (4-Year Honours Degree, 240 ECTS equivalent)*
- **Specialization:** Mechanical dynamics, kinematics, structural stress diagnosis, control system engineering, and sensor integration.
- **Key Coursework:**
  - Dynamic of Mechanical Systems
  - Vibration and Fault Diagnosis
  - Control System Engineering
  - Control of Robotics Manipulators
  - Machine Vision
  - Sensors and Actuators
  - Applied Mechanics and Strength of Materials
  - Mechatronics Product Design & Factory Automation

---

## 📬 Contact & Location
- **Location:** Sernanders Väg 12, LGH 1723, 75262 Uppsala, Sweden
- **Email:** [masanjitha3@gmail.com](mailto:masanjitha3@gmail.com)
- **Phone:** +46 73 704 07 60
- **Thesis Relocation:** Fully prepared and flexible to relocate across Sweden (Västerås, Stockholm, Gothenburg, etc.) for thesis research and industrial placements.
