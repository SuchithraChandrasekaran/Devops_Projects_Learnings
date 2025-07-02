import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [users, setUsers] = useState([]);
  const [newUser, setNewUser] = useState({ name: '', email: '' });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  useEffect(() => {
    fetchUsers();
  }, []);

  const fetchUsers = async () => {
    try {
      setLoading(true);
      const response = await axios.get('/api/users');
      setUsers(response.data);
    } catch (err) {
      setError('Failed to fetch users');
      console.error('Error fetching users:', err);
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!newUser.name || !newUser.email) {
      setError('Please fill in all fields');
      return;
    }

    try {
      setLoading(true);
      await axios.post('/api/users', newUser);
      setNewUser({ name: '', email: '' });
      setError('');
      fetchUsers();
    } catch (err) {
      setError('Failed to create user');
      console.error('Error creating user:', err);
    } finally {
      setLoading(false);
    }
  };

  const deleteUser = async (id) => {
    try {
      setLoading(true);
      await axios.delete(`/api/users/${id}`);
      fetchUsers();
    } catch (err) {
      setError('Failed to delete user');
      console.error('Error deleting user:', err);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>Multi-Service Docker Application</h1>
        <p>React Frontend with Express API, MongoDB, Redis, and Nginx</p>
      </header>

      <main className="container">
        <section className="user-form">
          <h2>Add New User</h2>
          <form onSubmit={handleSubmit}>
            <div className="form-group">
              <input
                type="text"
                placeholder="Name"
                value={newUser.name}
                onChange={(e) => setNewUser({ ...newUser, name: e.target.value })}
                disabled={loading}
              />
            </div>
            <div className="form-group">
              <input
                type="email"
                placeholder="Email"
                value={newUser.email}
                onChange={(e) => setNewUser({ ...newUser, email: e.target.value })}
                disabled={loading}
              />
            </div>
            <button type="submit" disabled={loading}>
              {loading ? 'Adding...' : 'Add User'}
            </button>
          </form>
          {error && <div className="error">{error}</div>}
        </section>

        <section className="users-list">
          <h2>Users ({users.length})</h2>
          {loading && <div className="loading">Loading...</div>}
          <div className="users-grid">
            {users.map((user) => (
              <div key={user._id} className="user-card">
                <h3>{user.name}</h3>
                <p>{user.email}</p>
                <p className="user-date">Added: {new Date(user.createdAt).toLocaleDateString()}</p>
                <button 
                  className="delete-btn"
                  onClick={() => deleteUser(user._id)}
                  disabled={loading}
                >
                  Delete
                </button>
              </div>
            ))}
          </div>
          {users.length === 0 && !loading && (
            <p className="no-users">No users found. Add some users above!</p>
          )}
        </section>
      </main>
    </div>
  );
}

export default App;
