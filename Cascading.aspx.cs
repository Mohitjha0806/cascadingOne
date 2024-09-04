using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace cascadingOne
{
    public partial class Cascading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountryDropdown();
            FillGrid();
            }
        }

        private void BindCountryDropdown()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("usp_GetCountries", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddl_Country.DataSource = reader;
                ddl_Country.DataTextField = "CountryName";
                ddl_Country.DataValueField = "CountryID";
                ddl_Country.DataBind();
            }
            ddl_Country.Items.Insert(0, new ListItem("Select Country", "0"));
        }

        private void BindStateDropdown(int countryId)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("usp_GetStatesByCountry", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CountryID", countryId);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddl_State.DataSource = reader;
                ddl_State.DataTextField = "StateName";
                ddl_State.DataValueField = "StateID";
                ddl_State.DataBind();
            }
            ddl_State.Items.Insert(0, new ListItem("Select State", "0"));
        }

        private void BindCityDropdown(int stateId)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("usp_GetCitiesByState", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StateID", stateId);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddl_City.DataSource = reader;
                ddl_City.DataTextField = "CityName";
                ddl_City.DataValueField = "CityID";
                ddl_City.DataBind();
            }
            ddl_City.Items.Insert(0, new ListItem("Select City", "0"));
        }

        protected void ddl_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (int.TryParse(ddl_Country.SelectedValue, out int countryId) && countryId > 0)
            {
                BindStateDropdown(countryId);
                ddl_City.Items.Clear();
            }
            else
            {
                ddl_State.Items.Clear();
                ddl_City.Items.Clear();
            }
        }

        protected void ddl_State_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (int.TryParse(ddl_State.SelectedValue, out int stateId) && stateId > 0)
            {
                BindCityDropdown(stateId);
            }
            else
            {
                ddl_City.Items.Clear();
            }
        }

        protected void FillGrid()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("usp_RetrieveSelections", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int? countryId = null;
            int? stateId = null;
            int? cityId = null;

            if (int.TryParse(ddl_Country.SelectedValue, out int selectedCountryId) && selectedCountryId > 0)
            {
                countryId = selectedCountryId;
            }

            if (int.TryParse(ddl_State.SelectedValue, out int selectedStateId) && selectedStateId > 0)
            {
                stateId = selectedStateId;
            }

            if (int.TryParse(ddl_City.SelectedValue, out int selectedCityId) && selectedCityId > 0)
            {
                cityId = selectedCityId;
            }

            if (countryId.HasValue && stateId.HasValue && cityId.HasValue)
            {
                SaveSelectionToDatabase(countryId.Value, stateId.Value, cityId.Value);
                FillGrid();
            }
        }

        private void SaveSelectionToDatabase(int countryId, int stateId, int cityId)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("usp_SaveSelection", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CountryID", countryId);
                cmd.Parameters.AddWithValue("@StateID", stateId);
                cmd.Parameters.AddWithValue("@CityID", cityId);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
