import React from 'react'

import IconButton from '@mui/material/IconButton'
import SearchIcon from '@mui/icons-material/Search'

const SearchWidget = (): JSX.Element => (
  <form className='d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0'>
    <div className='input-group'>
      <input
        className='form-control'
        type='text'
        placeholder='Search for...'
        aria-label='Search for...'
        aria-describedby='btnNavbarSearch'
      />
      <IconButton
        className='btn btn-primary'
        id='btnNavbarSearch'
        type='button'
      >
        <SearchIcon />
      </IconButton>
    </div>
  </form>
)

export default SearchWidget