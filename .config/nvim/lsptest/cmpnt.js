import React from 'react'

export default function MyComponent() {
  const [state, setState] = React.useState({})
  const object = { name: 'aaron' };

  if (!state.hello) {
    return <div>Loading</div>
  }

  return (
    <div>
      {object.name}
      <button
        onClick={() => setState({ hello: true })}
      >
        Initialize
      </button>
    </div>
  )
}
