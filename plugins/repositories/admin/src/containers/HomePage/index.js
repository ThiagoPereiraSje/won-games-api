import React, { memo, useState, useEffect } from 'react';
import axios from 'axios';
import { Header } from '@buffetjs/custom';
import { Table } from '@buffetjs/core';
import styled from 'styled-components';

const headers = [
  {
    name: 'Name',
    value: 'name',
  },
  {
    name: 'Description',
    value: 'description',
  },
  {
    name: 'Url',
    value: 'html_url',
  },
];

const Wrapper = styled.div`
  padding: 18px 30px;

  p {
    margin-top: 1rem;
  }
`;

const HomePage = () => {
  const [rows, setRows] = useState([]);

  useEffect(async () => {
    try {
      const res = await axios.get('https://api.github.com/users/React-avancado/repos');
      setRows(res.data);
    } catch (e) {
      strapi.notification.error(`Github API error, ${e.message || e}`);
    }
  }, [])

  return (
    <Wrapper>
      <Header
        title={{ label: 'React Avançado Repositories' }}
        content="A list of our repositories in React Avançado course" />

      <Table headers={headers} rows={rows} />
    </Wrapper>
  );
};

export default memo(HomePage);
