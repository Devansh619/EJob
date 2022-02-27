using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class DataClass
{
    
    SqlConnection conn = new SqlConnection();

    public DataClass()
    {       
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\ejdb.mdf;Integrated Security=True;User Instance=True";
    }


    public DataTable getTable(string query) // select * from emp
    {
        conn.Open();
        DataTable tb = new DataTable();
        try
        {
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            tb = ds.Tables[0];
        }
        catch (SqlException ex)
        {
            tb = null;
            Console.Write(ex.Message);
        }
        catch (Exception ex)
        {
            tb = null;
            Console.Write(ex.Message);
        }
        finally
        {
            conn.Close();
        }
        return tb;
    }

    public DataRow getRow(string query) // select * from emp where empid=101;
    {
        conn.Open();
        DataRow rw;
        try
        {
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            DataTable tb = new DataTable();
            sda.Fill(ds);
            tb = ds.Tables[0];
            rw = tb.Rows[0];
        }
        catch (SqlException ex)
        {
            rw = null;
            Console.Write(ex.Message);
        }
        catch (Exception ex)
        {
            rw = null;
            Console.Write(ex.Message);
        }
        finally
        {
            conn.Close();
        }
        return rw;
    }


    public SqlDataReader getRecord(string query) // select * from emp where empid=101;
    {
        conn.Open();
        SqlDataReader sdr;
        try
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            sdr = cmd.ExecuteReader();
            sdr.Read();
        }
        catch (SqlException ex)
        {
            sdr = null;
            Console.Write(ex.Message);
        }
        catch (Exception ex)
        {
            sdr = null;
            Console.Write(ex.Message);
        }
        finally
        {
            conn.Close();
        }
        return sdr;
    }

    public bool saveRecord(string query)  // insert, update , delete
    {
        bool result;
        conn.Open();
        try
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        finally
        {
            conn.Close();
        }
        return result;
    }

    public int primarykey(string query) // select max(id) from tablename
    {
        conn.Open();
        int pk = 0;
        SqlDataReader sdr = null;
        try
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            sdr = cmd.ExecuteReader();
            sdr.Read();
            pk = Convert.ToInt32(sdr[0]);
            pk++;
        }
        catch (SqlException ex)
        {
            pk = 1;
            Console.Write(ex.Message);
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }
        finally
        {
            sdr.Close();
            conn.Close();
        }
        return pk;
    }

    public string getString(string query) 
    {
        conn.Open();
        String str="";
        SqlDataReader sdr = null;
        try
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            sdr = cmd.ExecuteReader();
            sdr.Read();
            str = Convert.ToString(sdr[0]);
        }
        catch (SqlException ex)
        {
            str="";
            Console.Write(ex.Message);
        }
        catch (Exception ex)
        {
            str = "";
            Console.Write(ex.Message);
        }
        finally
        {
            sdr.Close();
            conn.Close();
        }
        return str;
    }

    public bool unique(string query)
    {
        bool result = false;
        int cnt = 0;
        SqlDataReader dr = null;
        conn.Open();
        try
        {            
            SqlCommand cmd = new SqlCommand(query, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            cnt = Convert.ToInt32(dr[0]);

            if (cnt >= 1)
                result = true;
            else
                result = false;
        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
        }
        finally
        {
            dr.Close();
            conn.Close();
        }
        return result;
    }
}